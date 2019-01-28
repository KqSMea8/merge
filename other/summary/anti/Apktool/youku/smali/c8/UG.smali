.class public Lc8/UG;
.super Ljava/lang/Object;
.source "ZipAppResultCode.java"


# static fields
.field public static ERR_APPRES_CONFIG_PARSE:I

.field public static ERR_APPS_CONFIG_PARSE:I

.field public static ERR_CHECK_CONFIG_APPRES:I

.field public static ERR_CHECK_CONFIG_APPS:I

.field public static ERR_CHECK_ZIP:I

.field public static ERR_DOWN_CONFIG_APPRES:I

.field public static ERR_DOWN_CONFIG_APPS:I

.field public static ERR_DOWN_RES_FILE:I

.field public static ERR_DOWN_ZIP:I

.field public static ERR_FILE_COPY:I

.field public static ERR_FILE_DEL:I

.field public static ERR_FILE_READ:I

.field public static ERR_FILE_SAVE:I

.field public static ERR_FILE_UNZIP:I

.field public static ERR_MD5_RES:I

.field public static ERR_NETWORK_NOT_SUPPORT:I

.field public static ERR_NOTFOUND_APPRES:I

.field public static ERR_PARAM:I

.field public static ERR_SYSTEM:I

.field public static ERR_VERIFY_APPRES:I

.field public static NETWORK_NOT_SUPPORT:I

.field public static SECCUSS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lc8/UG;->SECCUSS:I

    .line 21
    const/16 v0, 0x3e7

    sput v0, Lc8/UG;->ERR_SYSTEM:I

    .line 24
    const/16 v0, 0x385

    sput v0, Lc8/UG;->ERR_PARAM:I

    .line 27
    const/16 v0, 0x386

    sput v0, Lc8/UG;->NETWORK_NOT_SUPPORT:I

    .line 30
    const/16 v0, 0x65

    sput v0, Lc8/UG;->ERR_DOWN_CONFIG_APPS:I

    .line 32
    const/16 v0, 0x66

    sput v0, Lc8/UG;->ERR_DOWN_CONFIG_APPRES:I

    .line 34
    const/16 v0, 0x67

    sput v0, Lc8/UG;->ERR_DOWN_ZIP:I

    .line 36
    const/16 v0, 0x68

    sput v0, Lc8/UG;->ERR_DOWN_RES_FILE:I

    .line 38
    const/16 v0, 0x69

    sput v0, Lc8/UG;->ERR_NETWORK_NOT_SUPPORT:I

    .line 41
    const/16 v0, 0xc9

    sput v0, Lc8/UG;->ERR_CHECK_CONFIG_APPS:I

    .line 43
    const/16 v0, 0xca

    sput v0, Lc8/UG;->ERR_CHECK_CONFIG_APPRES:I

    .line 45
    const/16 v0, 0xcb

    sput v0, Lc8/UG;->ERR_CHECK_ZIP:I

    .line 48
    const/16 v0, 0x12d

    sput v0, Lc8/UG;->ERR_FILE_UNZIP:I

    .line 50
    const/16 v0, 0x12e

    sput v0, Lc8/UG;->ERR_FILE_COPY:I

    .line 52
    const/16 v0, 0x12f

    sput v0, Lc8/UG;->ERR_FILE_SAVE:I

    .line 54
    const/16 v0, 0x130

    sput v0, Lc8/UG;->ERR_FILE_READ:I

    .line 56
    const/16 v0, 0x131

    sput v0, Lc8/UG;->ERR_FILE_DEL:I

    .line 60
    const/16 v0, 0x191

    sput v0, Lc8/UG;->ERR_APPS_CONFIG_PARSE:I

    .line 61
    const/16 v0, 0x192

    sput v0, Lc8/UG;->ERR_APPRES_CONFIG_PARSE:I

    .line 69
    const/16 v0, 0x1f5

    sput v0, Lc8/UG;->ERR_NOTFOUND_APPRES:I

    .line 70
    const/16 v0, 0x1f6

    sput v0, Lc8/UG;->ERR_VERIFY_APPRES:I

    .line 71
    const/16 v0, 0x1f7

    sput v0, Lc8/UG;->ERR_MD5_RES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
