.class public final enum Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
.super Ljava/lang/Enum;
.source "ZipAppTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public static final enum ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string/jumbo v1, "ZIP_APP_TYPE_PACKAGEAPP"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string/jumbo v1, "ZIP_APP_TYPE_ZCACHE"

    const-wide/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string/jumbo v1, "ZIP_APP_TYPE_REACT"

    const-wide/16 v2, 0x20

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string/jumbo v1, "ZIP_APP_TYPE_ZCACHE2"

    const-wide/16 v2, 0x30

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    const-string/jumbo v1, "ZIP_APP_TYPE_UNKNOWN"

    const-wide/16 v2, 0xf0

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_PACKAGEAPP:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE2:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    aput-object v1, v0, v8

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-wide p3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-object v0
.end method

.method public static values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->value:J

    .line 21
    return-void
.end method
