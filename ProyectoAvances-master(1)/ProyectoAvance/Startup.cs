using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProyectoAvance.Startup))]
namespace ProyectoAvance
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
