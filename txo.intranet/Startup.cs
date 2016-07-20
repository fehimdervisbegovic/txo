using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(txo.intranet.Startup))]
namespace txo.intranet
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
