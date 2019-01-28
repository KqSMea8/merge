.class public Lc8/CLn;
.super Ljava/lang/Object;
.source "OrangeMgr.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DLn;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DLn;


# direct methods
.method constructor <init>(Lc8/DLn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/DLn;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/CLn;->this$0:Lc8/DLn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z

    .prologue
    .line 44
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "yk_upw_orange_code_key"

    const-string/jumbo v3, "\uff04"

    invoke-virtual {v1, p1, v2, v3}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigUpdate result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    sput-object v0, Lc8/DLn;->uPasswordCode:Ljava/lang/String;

    .line 47
    return-void
.end method
