.class public Lc8/rvk;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"

# interfaces
.implements Lc8/Rgn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qvk;
    }
.end annotation


# static fields
.field public static final CANCEL_ORDER:I = 0xc

.field public static final CHINA_UNICOM_BROADCAST_RECEIVER:Ljava/lang/String; = "com.youku.chinaunicom.init"

.field public static final CONTINUE_ORDER:I = 0xb

.field public static final HANDLER_FAIL_GET_NUMBER:I = 0x2faa

.field public static final HANDLER_SUCCESS_GET_CODE_FAIL_RELATION:I = 0x2fa8

.field public static final HANDLER_SUCCESS_GET_CODE_SUCCESS_RELATION:I = 0x2fa9

.field public static final HANDLER_SYNC_GET_NUMBER_FAIL:I = 0x4e27

.field public static final HANDLER_SYNC_GET_NUMBER_SUCCESS:I = 0x4e26

.field public static final Handler_Message_What_Get_Ship_Success:I = 0x186aa

.field public static IS_INIT_CHINA_UNICOM_SDK:Z = false

.field public static final KEY_INIT_CHINA_UNICOM_SDK_SUCCESS:Ljava/lang/String; = "init_china_unicome_key"

.field public static final MESSAGE_ACTIVITE:Ljava/lang/String; = "1003"

.field public static final MESSAGE_SUCCESS_GET_SERVICE_INFO:I = 0x1dd64

.field public static final ORDER_AT_ONCE:I = 0xa

.field public static final ORDER_PACKET_FLOW_FAIL:I = 0x15f90

.field public static final ORDER_PACKET_FLOW_SUCCESS:I = 0x10c8e0

.field public static final SUCCESS_GET_CODE_FAIL_RELATION:Ljava/lang/String; = "2000"

.field public static final SUCCESS_GET_CODE_SUCCESS_RELATION:Ljava/lang/String; = "2006"

.field public static final SUCCESS_GET_NUMBER_FAIL:Ljava/lang/String; = "2006"

.field public static final Unssbscribe_Order_RETRY:I = 0x232e

.field public static final Unssbscribe_Order_Success:I = 0x10eff0

.field private static mChinaUnicomManger:Lc8/rvk;


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lc8/rvk;->mChinaUnicomManger:Lc8/rvk;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lc8/rvk;->IS_INIT_CHINA_UNICOM_SDK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context2"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lc8/rvk;->context:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/rvk;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lc8/rvk;->mChinaUnicomManger:Lc8/rvk;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lc8/rvk;

    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/rvk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/rvk;->mChinaUnicomManger:Lc8/rvk;

    .line 67
    :cond_0
    sget-object v0, Lc8/rvk;->mChinaUnicomManger:Lc8/rvk;

    return-object v0
.end method


# virtual methods
.method public init3GSDK(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 86
    return-void
.end method

.method public isHasFreeflowRelationship()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lc8/rvk;->isShow3GChinaUnicomPlay()Z

    move-result v0

    return v0
.end method

.method public isInitChinaUnicomSDK()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lc8/rvk;->IS_INIT_CHINA_UNICOM_SDK:Z

    return v0
.end method

.method public isShow3GChinaUnicomPlay()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public showMessageDialog(Landroid/content/Context;ILc8/Qgn;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flagDialog"    # I
    .param p3, "mOnclick"    # Lc8/Qgn;

    .prologue
    .line 101
    invoke-static {}, Lc8/zvk;->getInstance()Lc8/zvk;

    move-result-object v0

    new-instance v1, Lc8/pvk;

    invoke-direct {v1, p0, p3}, Lc8/pvk;-><init>(Lc8/rvk;Lc8/Qgn;)V

    invoke-virtual {v0, p1, p2, v1}, Lc8/zvk;->showMessageDialog(Landroid/content/Context;ILc8/wvk;)V

    .line 116
    return-void
.end method
