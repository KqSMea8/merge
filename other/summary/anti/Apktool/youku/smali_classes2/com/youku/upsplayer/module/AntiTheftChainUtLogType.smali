.class public final enum Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;
.super Ljava/lang/Enum;
.source "AntiTheftChainUtLogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

.field public static final enum ADEND:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

.field public static final enum ADSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

.field public static final enum CKEYERROR:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

.field public static final enum DOWNLOADSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

.field public static final enum UNKNOWN:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

.field public static final enum VODSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    const-string/jumbo v1, "ADSTART"

    invoke-direct {v0, v1, v3}, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->ADSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    .line 9
    new-instance v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    const-string/jumbo v1, "ADEND"

    invoke-direct {v0, v1, v4}, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->ADEND:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    .line 10
    new-instance v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    const-string/jumbo v1, "VODSTART"

    invoke-direct {v0, v1, v5}, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->VODSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    .line 11
    new-instance v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    const-string/jumbo v1, "DOWNLOADSTART"

    invoke-direct {v0, v1, v6}, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->DOWNLOADSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    .line 12
    new-instance v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v7}, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->UNKNOWN:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    .line 13
    new-instance v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    const-string/jumbo v1, "CKEYERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->CKEYERROR:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    sget-object v1, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->ADSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->ADEND:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->VODSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->DOWNLOADSTART:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->UNKNOWN:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->CKEYERROR:Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->$VALUES:[Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    return-object v0
.end method

.method public static values()[Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->$VALUES:[Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    invoke-virtual {v0}, [Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/upsplayer/module/AntiTheftChainUtLogType;

    return-object v0
.end method
