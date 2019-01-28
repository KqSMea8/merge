.class public final enum Landroid/taobao/windvane/config/EnvEnum;
.super Ljava/lang/Enum;
.source "EnvEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/taobao/windvane/config/EnvEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/config/EnvEnum;

.field public static final enum DAILY:Landroid/taobao/windvane/config/EnvEnum;

.field public static final enum ONLINE:Landroid/taobao/windvane/config/EnvEnum;

.field public static final enum PRE:Landroid/taobao/windvane/config/EnvEnum;


# instance fields
.field private key:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Landroid/taobao/windvane/config/EnvEnum;

    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "m"

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/taobao/windvane/config/EnvEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    new-instance v0, Landroid/taobao/windvane/config/EnvEnum;

    const-string/jumbo v1, "PRE"

    const-string/jumbo v2, "wapa"

    invoke-direct {v0, v1, v4, v4, v2}, Landroid/taobao/windvane/config/EnvEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/config/EnvEnum;->PRE:Landroid/taobao/windvane/config/EnvEnum;

    new-instance v0, Landroid/taobao/windvane/config/EnvEnum;

    const-string/jumbo v1, "DAILY"

    const-string/jumbo v2, "waptest"

    invoke-direct {v0, v1, v5, v5, v2}, Landroid/taobao/windvane/config/EnvEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/taobao/windvane/config/EnvEnum;

    sget-object v1, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/config/EnvEnum;->PRE:Landroid/taobao/windvane/config/EnvEnum;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    aput-object v1, v0, v5

    sput-object v0, Landroid/taobao/windvane/config/EnvEnum;->$VALUES:[Landroid/taobao/windvane/config/EnvEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Landroid/taobao/windvane/config/EnvEnum;->key:I

    .line 24
    iput-object p4, p0, Landroid/taobao/windvane/config/EnvEnum;->value:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/config/EnvEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/config/EnvEnum;

    return-object v0
.end method

.method public static values()[Landroid/taobao/windvane/config/EnvEnum;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->$VALUES:[Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/config/EnvEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/config/EnvEnum;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Landroid/taobao/windvane/config/EnvEnum;->key:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Landroid/taobao/windvane/config/EnvEnum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 32
    iput p1, p0, Landroid/taobao/windvane/config/EnvEnum;->key:I

    .line 33
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/taobao/windvane/config/EnvEnum;->value:Ljava/lang/String;

    .line 41
    return-void
.end method
