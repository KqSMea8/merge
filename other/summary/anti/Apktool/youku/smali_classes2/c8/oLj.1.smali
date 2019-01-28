.class public Lc8/oLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->initApplink(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 1026
    iput-object p1, p0, Lc8/oLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1031
    :try_start_0
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2}, Lc8/Iin;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "appkey":Ljava/lang/String;
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v3

    sget-object v4, Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;->ONLINE:Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;

    invoke-virtual {v2, v3, v0, v4}, Lc8/unf;->init(Landroid/app/Application;Ljava/lang/String;Lcom/taobao/flowcustoms/AlibcFlowCustomsSDK$Environment;)V

    .line 1035
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    new-instance v3, Lc8/Hof;

    invoke-direct {v3}, Lc8/Hof;-><init>()V

    invoke-virtual {v2, v3}, Lc8/unf;->addPlugin(Lc8/yof;)V

    .line 1037
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    new-instance v3, Lc8/nLj;

    invoke-direct {v3, p0}, Lc8/nLj;-><init>(Lc8/oLj;)V

    invoke-virtual {v2, v3}, Lc8/unf;->addPlugin(Lc8/yof;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .end local v0    # "appkey":Ljava/lang/String;
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "YKGLOBAL.Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initApplink throw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
