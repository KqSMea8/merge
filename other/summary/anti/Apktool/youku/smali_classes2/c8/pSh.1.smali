.class public Lc8/pSh;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qSh;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qSh;


# direct methods
.method constructor <init>(Lc8/qSh;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qSh;

    .prologue
    .line 81
    iput-object p1, p0, Lc8/pSh;->this$0:Lc8/qSh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 84
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const-string/jumbo v1, "arch_common_config"

    const-string/jumbo v2, "accs_whitelist"

    const-string/jumbo v3, ","

    invoke-static {}, Lc8/tSh;->access$100()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/tSh;->access$002([Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    return-void
.end method
