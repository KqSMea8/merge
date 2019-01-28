.class public Lc8/pG;
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
        "Lc8/WG;",
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
    .line 142
    iput-object p1, p0, Lc8/pG;->this$0:Lc8/sG;

    iput-object p2, p0, Lc8/pG;->val$callback:Lc8/LB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Lc8/WG;)V
    .locals 3
    .param p1, "value"    # Lc8/WG;

    .prologue
    .line 145
    invoke-static {p1}, Lc8/OG;->startUpdateApps(Lc8/WG;)V

    .line 146
    iget-object v0, p0, Lc8/pG;->val$callback:Lc8/LB;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lc8/pG;->val$callback:Lc8/LB;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {p1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 148
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 151
    :cond_0
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, Lc8/WG;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/pG;->onReceiveValue(Lc8/WG;)V

    return-void
.end method
