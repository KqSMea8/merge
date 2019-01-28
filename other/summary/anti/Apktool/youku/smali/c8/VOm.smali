.class public Lc8/VOm;
.super Ljava/lang/Object;
.source "TLogUtilNative.java"


# static fields
.field public static final ERROR_USER_REPORT:Ljava/lang/String; = "\u7070\u5ea6\u7528\u6237\u4e3b\u52a8\u4e0a\u4f20-1"

.field public static final ERROR_VIP_MID_AD:Ljava/lang/String; = "\u4f1a\u5458\u64ad\u4e2d\u63d2"

.field public static final ERROR_VIP_PRE_AD:Ljava/lang/String; = "\u4f1a\u5458\u64ad\u524d\u8d34"

.field private static user_ip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, ""

    sput-object v0, Lc8/VOm;->user_ip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aliplayerLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "YKPlayer.AliMediaPlayer"

    invoke-static {v0, p0}, Lc8/VOm;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0, p1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static playLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string/jumbo v0, "YKPlayer.PlayFlow"

    invoke-static {v0, p0}, Lc8/VOm;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
