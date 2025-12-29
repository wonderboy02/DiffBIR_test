# PyTorch Development Environment

> **[► Create an Instance](https://cloud.vast.ai/?ref_id=62897&creator_id=62897&name=PyTorch%20(Vast))** 

## What is this template?

This template gives you an **NVIDIA CUDA & PyTorch development environment** running in a Docker container. It comes with everything you need for GPU-accelerated development, machine learning, and general computing - plus the freedom to install any software that runs on Linux.

**Think:** *"Your own high-powered Linux workstation in the cloud with GPU access."*

> **Note:** This runs in an unprivileged Docker container with some limitations. Need full system access? Check out our [Virtual Machine (VM) templates](https://vast.ai/templates) for complete freedom.

---

## What can I do with this?

- **GPU-accelerated development** with CUDA, cuDNN, and many essential libraries  
- **Machine learning** with a clean Python environment ready for your custom setup  
- **Jupyter Lab/Notebook** for interactive development  
- **Terminal access** with some root privileges (unprivileged Docker container)  
- **Install any Linux software** - compilers, databases, web servers, you name it  
- **File synchronization** across devices with Syncthing  
- **Experiment tracking** with Tensorboard  

---

## Who is this for?

This is **perfect** if you:
- Need GPU power for machine learning or scientific computing  
- Want a complete development environment without setup hassle  
- Are learning CUDA programming or deep learning  
- Need to run experiments that require specific software installations  
- Want the flexibility of a full Linux environment with GPU access

---

## Quick Start Guide

### **Step 1: Launch Your Environment**
Click the **[Rent](https://cloud.vast.ai/?ref_id=62897&creator_id=62897&name=PyTorch%20(Vast))** button when you've found an instance that works for you

### **Step 2: Choose Your Access Method**
- **For interactive development:** Click the **"Jupyter"** button for instant access to Jupyter Lab  
- **For terminal work:** Click the **"SSH"** button to get your connection details (sessions automatically launch in tmux)  
- **For web-based management:** Click the **"Open"** button to access the application manager  

> **💡 HTTPS Option:** Want secure connections? Set `ENABLE_HTTPS=true` in the **Environment Variables section** of your Vast.ai account settings page. You'll need to [install the Vast.ai certificate](https://docs.vast.ai/instances/jupyter) to avoid browser warnings. If you don't enable HTTPS, we'll **try** to redirect you to a temporary secure Cloudflare link (though availability is occasionally limited).  

### **Step 3: Start Building!**
- **PyTorch Python environment** with `conda` and `uv` ready for your custom setup
- **Terminal access** lets you install anything you need  
- **GPU acceleration** is available immediately  

---

## Key Features

### **Python Environment**
- Virtual environment (`/venv/main/`) with PyTorch pre-installed
- Environment activates automatically when you connect
- Install any packages you need with `pip install` or `uv pip install`
- Jupyter kernel for this environment is ready to use in your notebooks

### **Experiment Tracking**
- **Tensorboard** runs automatically and monitors your `/workspace` directory
- Perfect for tracking training metrics and visualizing results
- Access through the Instance Portal with one click

### **Node, npm, nvm**
- **Node Version Manager (NVM)** manages Node.js environments
- Pre-installed with latest LTS Node.js version
- Supports popular ML visualization tools and web interfaces
- Essential for modern AI/ML tools and visualization frameworks

### **OpenCL**
- **Standardized framework** for parallel programming across heterogeneous computing platforms
- Ideal for high-performance computing tasks that can leverage GPUs, CPUs, and other processors
- Cross-platform compatibility with hardware-agnostic code execution
- Support for data and task parallelism with memory management optimization

### **File Synchronization**
- **Syncthing** keeps your files in sync across multiple devices
- Great for maintaining consistent workspaces or sharing datasets
- Set up once, sync everywhere

### **Instance Portal (Application Manager)**
- Web-based dashboard for managing your applications
- **Cloudflare tunnels** for easy sharing (no port forwarding needed!)
- Log monitoring for running services
- Start and stop services with a few clicks

### **Dynamic Provisioning**
Need specific software installed automatically? Set the `PROVISIONING_SCRIPT` environment variable to a plain-text script URL (GitHub, Gist, etc.), and we'll run your setup script on first boot!

### **Multiple Access Methods**
| Method | Best For | What You Get |
|--------|----------|--------------|
| **Jupyter** | Interactive development | Browser-based coding environment |
| **SSH** | Terminal work | Full command-line access with tmux |
| **Instance Portal** | Managing services | Application manager dashboard |

### **Service Management**
- **Supervisor** manages all background services
- Easy commands: `supervisorctl status`, `supervisorctl restart tensorboard`
- Add your own services with simple configuration files

### **Task Scheduling**
- **Cron** is enabled for automating routine tasks
- Schedule model training jobs, data downloads, or maintenance tasks
- Just add entries to your crontab to get started

### **Instance Control**
- **Vast.ai CLI** comes pre-installed with instance-specific API key
- Stop your instance from within itself: `vastai stop instance $CONTAINER_ID`
- Perfect for automated shutdown based on specific conditions

---

## Customization Tips

### **Installing Software**
```bash
# You have root access - install anything!
apt update && apt install -y your-favorite-package

# Install Python packages
uv pip install your-ml-library

# Add system services
echo "your-service-config" > /etc/supervisor/conf.d/my-app.conf
supervisorctl reload
```

### **Environment Variables**
Customize your experience with these handy variables:
- `WORKSPACE`: Change your default working directory
- `PROVISIONING_SCRIPT`: Auto-run setup scripts from GitHub, Gist, or any plain-text URL
- `TENSORBOARD_LOG_DIR`: Customize the log directory for Tensorboard (defaults to `/workspace`)
- `ENABLE_HTTPS`: Force HTTPS connections - set in your Vast.ai account settings (requires [certificate installation](https://docs.vast.ai/instances/jupyter))

### **Template Customization**
Want to save your perfect setup? Templates can't be changed directly, but you can easily make your own version! Just click **edit**, make your changes, and save it as your own template. You'll find it in your **"My Templates"** section later.

---

## Need More Help?

- **Base Image Features:** [GitHub Repository](https://github.com/vast-ai/base-image/)
- **Instance Portal Guide:** [Vast.ai Instance Portal Documentation](https://docs.vast.ai/instance-portal)
- **SSH Setup Guide:** [Vast.ai SSH Documentation](https://docs.vast.ai/instances/sshscp)
- **Template Configuration:** [Vast.ai Template Guide](https://docs.vast.ai/templates)
- **Support:** Use the messaging icon in the Vast.ai console

updated 20251205