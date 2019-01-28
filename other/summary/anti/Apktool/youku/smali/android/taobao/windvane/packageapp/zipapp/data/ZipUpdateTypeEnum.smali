.class public final enum Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
.super Ljava/lang/Enum;
.source "ZipUpdateTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

.field public static final enum ZIP_APP_TYPE_FORCE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

.field public static final enum ZIP_APP_TYPE_ONLINE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

.field public static final enum ZIP_UPDATE_TYPE_PASSIVE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    const-string/jumbo v1, "ZIP_UPDATE_TYPE_PASSIVE"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_UPDATE_TYPE_PASSIVE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    const-string/jumbo v1, "ZIP_APP_TYPE_FORCE"

    const-wide/16 v2, 0x100

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_APP_TYPE_FORCE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    new-instance v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    const-string/jumbo v1, "ZIP_APP_TYPE_ONLINE"

    const-wide/16 v2, 0x200

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_APP_TYPE_ONLINE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_UPDATE_TYPE_PASSIVE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_APP_TYPE_FORCE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_APP_TYPE_ONLINE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    aput-object v1, v0, v6

    sput-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

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
    iput-wide p3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->value:J

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    return-object v0
.end method

.method public static values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->$VALUES:[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->value:J

    .line 21
    return-void
.end method
