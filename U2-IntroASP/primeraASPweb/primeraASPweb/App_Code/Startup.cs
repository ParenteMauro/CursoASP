using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(primeraASPweb.Startup))]
namespace primeraASPweb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
