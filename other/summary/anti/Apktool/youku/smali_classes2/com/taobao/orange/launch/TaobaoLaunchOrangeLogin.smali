.class public Lcom/taobao/orange/launch/TaobaoLaunchOrangeLogin;
.super Ljava/lang/Object;
.source "TaobaoLaunchOrangeLogin.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LAUNCH_KEY_USERID:Ljava/lang/String; = "userId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lc8/Ytf;->isTaobaoPackage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 30
    .local v1, "userId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "userId"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_1
    if-nez v1, :cond_1

    .line 34
    const-string/jumbo v1, ""

    .line 36
    :cond_1
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/ctf;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
