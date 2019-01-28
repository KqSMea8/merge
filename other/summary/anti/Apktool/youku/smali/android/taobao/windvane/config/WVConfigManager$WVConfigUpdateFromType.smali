.class public final enum Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
.super Ljava/lang/Enum;
.source "WVConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WVConfigUpdateFromType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field public static final enum WVConfigUpdateFromTypeActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field public static final enum WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field public static final enum WVConfigUpdateFromTypeCustom:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field public static final enum WVConfigUpdateFromTypeFinish:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field public static final enum WVConfigUpdateFromTypeLaunch:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field public static final enum WVConfigUpdateFromTypePush:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    const-string/jumbo v1, "WVConfigUpdateFromTypeCustom"

    invoke-direct {v0, v1, v3}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeCustom:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 51
    new-instance v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    const-string/jumbo v1, "WVConfigUpdateFromTypeActive"

    invoke-direct {v0, v1, v4}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 52
    new-instance v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    const-string/jumbo v1, "WVConfigUpdateFromTypeFinish"

    invoke-direct {v0, v1, v5}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeFinish:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 53
    new-instance v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    const-string/jumbo v1, "WVConfigUpdateFromTypePush"

    invoke-direct {v0, v1, v6}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypePush:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 54
    new-instance v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    const-string/jumbo v1, "WVConfigUpdateFromTypeLaunch"

    invoke-direct {v0, v1, v7}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeLaunch:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 55
    new-instance v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    const-string/jumbo v1, "WVConfigUpdateFromTypeAppActive"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeCustom:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeFinish:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypePush:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeLaunch:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->$VALUES:[Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    return-object v0
.end method

.method public static values()[Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->$VALUES:[Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v0}, [Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    return-object v0
.end method
