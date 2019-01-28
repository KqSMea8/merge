.class public Lc8/NHg;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static appname:Ljava/lang/String;

.field public static appver:Ljava/lang/String;

.field public static brand:Ljava/lang/String;

.field public static btype:Ljava/lang/String;

.field public static deviceid:Ljava/lang/String;

.field public static gdid:Ljava/lang/String;

.field public static guid:Ljava/lang/String;

.field public static ht:I

.field public static imei:Ljava/lang/String;

.field public static imsi:Ljava/lang/String;

.field public static mac:Ljava/lang/String;

.field public static network:Ljava/lang/String;

.field public static operator:Ljava/lang/String;

.field public static os:Ljava/lang/String;

.field public static os_ver:Ljava/lang/String;

.field public static pid:Ljava/lang/String;

.field public static rguid:Ljava/lang/String;

.field public static sdkver:Ljava/lang/String;

.field public static uuid:Ljava/lang/String;

.field public static wt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, ""

    sput-object v0, Lc8/NHg;->pid:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "2.3"

    sput-object v0, Lc8/NHg;->sdkver:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "Android"

    sput-object v0, Lc8/NHg;->os:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
