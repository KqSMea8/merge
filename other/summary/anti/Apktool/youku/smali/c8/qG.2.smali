.class public Lc8/qG;
.super Ljava/lang/Object;
.source "WVPackageAppManager.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sG;->updatePackageAppConfig(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Landroid/taobao/windvane/WindvaneException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sG;

.field final synthetic val$callback:Lc8/LB;


# direct methods
.method constructor <init>(Lc8/sG;Lc8/LB;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lc8/qG;->this$0:Lc8/sG;

    iput-object p2, p0, Lc8/qG;->val$callback:Lc8/LB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Landroid/taobao/windvane/WindvaneException;)V
    .locals 3
    .param p1, "value"    # Landroid/taobao/windvane/WindvaneException;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/taobao/windvane/WindvaneException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/taobao/windvane/WindvaneException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/KG;->error(ILjava/lang/String;)V

    .line 156
    iget-object v0, p0, Lc8/qG;->val$callback:Lc8/LB;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lc8/qG;->val$callback:Lc8/LB;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 159
    :cond_0
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, Landroid/taobao/windvane/WindvaneException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/qG;->onReceiveValue(Landroid/taobao/windvane/WindvaneException;)V

    return-void
.end method
