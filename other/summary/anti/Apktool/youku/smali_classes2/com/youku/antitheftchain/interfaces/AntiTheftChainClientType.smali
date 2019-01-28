.class public final enum Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;
.super Ljava/lang/Enum;
.source "AntiTheftChainClientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

.field public static final enum External:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

.field public static final enum Internal:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

.field public static final enum Unknown:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->Unknown:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    .line 8
    new-instance v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    const-string/jumbo v1, "Internal"

    invoke-direct {v0, v1, v3}, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->Internal:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    .line 9
    new-instance v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    const-string/jumbo v1, "External"

    invoke-direct {v0, v1, v4}, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->External:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    sget-object v1, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->Unknown:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->Internal:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->External:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->$VALUES:[Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    return-object v0
.end method

.method public static values()[Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->$VALUES:[Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    invoke-virtual {v0}, [Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    return-object v0
.end method
