.class public final Lc8/bXf;
.super Ljava/lang/Object;
.source "WXModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/cXf;->registerModule(Ljava/lang/String;Lc8/HWf;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$factory:Lc8/HWf;

.field final synthetic val$global:Z

.field final synthetic val$moduleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLc8/HWf;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lc8/bXf;->val$moduleName:Ljava/lang/String;

    iput-boolean p2, p0, Lc8/bXf;->val$global:Z

    iput-object p3, p0, Lc8/bXf;->val$factory:Lc8/HWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lc8/cXf;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lc8/bXf;->val$moduleName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WXComponentRegistry Duplicate the Module name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bXf;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-boolean v2, p0, Lc8/bXf;->val$global:Z

    if-eqz v2, :cond_1

    .line 97
    :try_start_0
    iget-object v2, p0, Lc8/bXf;->val$factory:Lc8/HWf;

    invoke-interface {v2}, Lc8/HWf;->buildInstance()Lc8/MXf;

    move-result-object v1

    .line 98
    .local v1, "wxModule":Lc8/MXf;
    iget-object v2, p0, Lc8/bXf;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/MXf;->setModuleName(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lc8/cXf;->access$100()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lc8/bXf;->val$moduleName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "wxModule":Lc8/MXf;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lc8/bXf;->val$moduleName:Ljava/lang/String;

    iget-object v3, p0, Lc8/bXf;->val$factory:Lc8/HWf;

    invoke-static {v2, v3}, Lc8/cXf;->registerNativeModule(Ljava/lang/String;Lc8/HWf;)Z
    :try_end_1
    .catch Lcom/taobao/weex/common/WXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_1
    iget-object v2, p0, Lc8/bXf;->val$moduleName:Ljava/lang/String;

    iget-object v3, p0, Lc8/bXf;->val$factory:Lc8/HWf;

    invoke-static {v2, v3}, Lc8/cXf;->registerJSModule(Ljava/lang/String;Lc8/HWf;)Z

    .line 111
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/bXf;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " class must have a default constructor without params. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Lcom/taobao/weex/common/WXException;
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
