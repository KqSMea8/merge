.class public final enum Lcom/youku/poplayer/config/ChannelEnum;
.super Ljava/lang/Enum;
.source "ChannelEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/poplayer/config/ChannelEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/poplayer/config/ChannelEnum;

.field public static final enum CACHE:Lcom/youku/poplayer/config/ChannelEnum;

.field public static final enum HTTPS:Lcom/youku/poplayer/config/ChannelEnum;

.field public static final enum ORANGE:Lcom/youku/poplayer/config/ChannelEnum;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/youku/poplayer/config/ChannelEnum;

    const-string/jumbo v1, "HTTPS"

    const-string/jumbo v2, "https"

    invoke-direct {v0, v1, v3, v2}, Lcom/youku/poplayer/config/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/poplayer/config/ChannelEnum;->HTTPS:Lcom/youku/poplayer/config/ChannelEnum;

    .line 19
    new-instance v0, Lcom/youku/poplayer/config/ChannelEnum;

    const-string/jumbo v1, "ORANGE"

    const-string/jumbo v2, "orange"

    invoke-direct {v0, v1, v4, v2}, Lcom/youku/poplayer/config/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/poplayer/config/ChannelEnum;->ORANGE:Lcom/youku/poplayer/config/ChannelEnum;

    .line 24
    new-instance v0, Lcom/youku/poplayer/config/ChannelEnum;

    const-string/jumbo v1, "CACHE"

    const-string/jumbo v2, "cache"

    invoke-direct {v0, v1, v5, v2}, Lcom/youku/poplayer/config/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youku/poplayer/config/ChannelEnum;->CACHE:Lcom/youku/poplayer/config/ChannelEnum;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/poplayer/config/ChannelEnum;

    sget-object v1, Lcom/youku/poplayer/config/ChannelEnum;->HTTPS:Lcom/youku/poplayer/config/ChannelEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/poplayer/config/ChannelEnum;->ORANGE:Lcom/youku/poplayer/config/ChannelEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/poplayer/config/ChannelEnum;->CACHE:Lcom/youku/poplayer/config/ChannelEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/poplayer/config/ChannelEnum;->$VALUES:[Lcom/youku/poplayer/config/ChannelEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/youku/poplayer/config/ChannelEnum;->mValue:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/poplayer/config/ChannelEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/youku/poplayer/config/ChannelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/poplayer/config/ChannelEnum;

    return-object v0
.end method

.method public static values()[Lcom/youku/poplayer/config/ChannelEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/youku/poplayer/config/ChannelEnum;->$VALUES:[Lcom/youku/poplayer/config/ChannelEnum;

    invoke-virtual {v0}, [Lcom/youku/poplayer/config/ChannelEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/poplayer/config/ChannelEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/poplayer/config/ChannelEnum;->mValue:Ljava/lang/String;

    return-object v0
.end method
