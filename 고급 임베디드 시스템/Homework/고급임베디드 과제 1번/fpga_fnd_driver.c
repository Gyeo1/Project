#include <linux/module.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/slab.h>
#include <linux/platform_device.h>
#include <linux/delay.h>

#include <asm/io.h>
#include <asm/uaccess.h>
#include <linux/kernel.h>
#include <linux/ioport.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/version.h>

#define IOM_FND_MAJOR 261
#define IOM_FND_NAME "fpga_fnd"

#define IOM_FND_ADDRESS 0x08000004 // pysical address

static int fpga_fnd_port_usage = 0;
static unsigned char *iom_fpga_fnd_addr;

ssize_t iom_fpga_fnd_write(struct file *inode, const char *gdata, size_t length, loff_t *off_what);
ssize_t iom_fpga_fnd_read(struct file *inode, char *gdata, size_t length, loff_t *off_what);
int iom_fpga_fnd_open(struct inode *minode, struct file *mfile);
int iom_fpga_fnd_release(struct inode *minode, struct file *mfile);

struct file_operations iom_fpga_fnd_fops =
{
	.owner		=	THIS_MODULE,
	.open		=	iom_fpga_fnd_open,
	.write		=	iom_fpga_fnd_write,
	.read		=	iom_fpga_fnd_read,
	.release	=	iom_fpga_fnd_release,
};

// task queue structure

int iom_fpga_fnd_open(struct inode *minode, struct file *mfile)
{
	if(fpga_fnd_port_usage != 0) return -EBUSY;
	fpga_fnd_port_usage = 1;
	return 0;
}

int iom_fpga_fnd_release(struct inode *minode, struct file *mfile)
{
	fpga_fnd_port_usage = 0;
	return 0;
}

ssize_t iom_fpga_fnd_write(struct file *inode, const char *gdata,  size_t length, loff_t *off_what)
{
	int i;
	unsigned char value[4];
	unsigned short int value_short = 0;
	const char *tmp = gdata;

	if(copy_from_user(&value, tmp, 4))
		return -EFAULT;

	value_short = value[0] << 12 | value[1] << 8 | value[2] << 4 | value[3];
	outw(value_short, (unsigned int)iom_fpga_fnd_addr);

	return length;
}

ssize_t iom_fpga_fnd_read(struct file *inode, char *gdata, size_t length, loff_t *off_what)
{
	int i;
	unsigned char value[4];
	unsigned short int value_short = 0;
	char *tmp = gdata;

	value_short = inw((unsigned int)iom_fpga_fnd_addr);
	value[0] = (value_short >> 12) & 0xF;
	value[1] = (value_short >> 8) & 0xF;
	value[2] = (value_short >> 4) & 0xF;
	value[3] = value_short & 0xF;

	if(copy_to_user(tmp, value, 4))
		return -EFAULT;

	return length;
}

int __init iom_fpga_fnd_init(void)
{
	int result;

	result = register_chrdev(IOM_FND_MAJOR, IOM_FND_NAME, &iom_fpga_fnd_fops);

	if(result < 0){
		printk(KERN_WARNING "Can't get any major \n");
		return result;
	}

	iom_fpga_fnd_addr = ioremap(IOM_FND_ADDRESS, 0x4);

	printk(KERN_WARNING "init module, %s major number : %d \n", IOM_FND_NAME, IOM_FND_MAJOR);


	return 0;
}

void __exit iom_fpga_fnd_exit(void)
{
	iounmap(iom_fpga_fnd_addr);
	unregister_chrdev(IOM_FND_MAJOR, IOM_FND_NAME);
}

module_init(iom_fpga_fnd_init);
module_exit(iom_fpga_fnd_exit);
