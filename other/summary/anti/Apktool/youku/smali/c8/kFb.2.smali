.class public Lc8/kFb;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lc8/jFb;->a:Ljava/lang/String;

    const-class v1, Lc8/jFb;

    invoke-static {v0, v1, v2}, Lc8/uFb;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    const-string/jumbo v0, "AliBCNetWork"

    const-class v1, Lc8/lFb;

    invoke-static {v0, v1, v2}, Lc8/uFb;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    sget-object v0, Lc8/iFb;->a:Ljava/lang/String;

    const-class v1, Lc8/iFb;

    invoke-static {v0, v1, v2}, Lc8/uFb;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    sget-object v0, Lc8/oFb;->a:Ljava/lang/String;

    const-class v1, Lc8/oFb;

    invoke-static {v0, v1, v2}, Lc8/uFb;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    const-string/jumbo v0, "AliBCUserTrack"

    const-class v1, Lc8/nFb;

    invoke-static {v0, v1, v2}, Lc8/uFb;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method
