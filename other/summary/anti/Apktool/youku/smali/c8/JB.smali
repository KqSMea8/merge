.class public Lc8/JB;
.super Ljava/lang/Object;
.source "WVConfigManager.java"

# interfaces
.implements Lc8/pH;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVPageEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 2
    .param p1, "id"    # I
    .param p2, "ctx"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 75
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 66
    :sswitch_0
    invoke-static {}, Lc8/KB;->access$000()Lc8/KB;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v0, v1}, Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    goto :goto_0

    .line 69
    :sswitch_1
    invoke-static {}, Lc8/KB;->access$000()Lc8/KB;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeFinish:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v0, v1}, Lc8/KB;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_1
        0xbba -> :sswitch_0
    .end sparse-switch
.end method
