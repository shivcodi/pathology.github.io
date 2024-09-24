using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(patho_hospital.Startup))]
namespace patho_hospital
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
