.class public final enum Lcom/youku/network/config/YKNetworkConfig$CallType;
.super Ljava/lang/Enum;
.source "YKNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RJj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/network/config/YKNetworkConfig$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/network/config/YKNetworkConfig$CallType;

.field public static final enum MTOP:Lcom/youku/network/config/YKNetworkConfig$CallType;

.field public static final enum NETWORKSDK:Lcom/youku/network/config/YKNetworkConfig$CallType;

.field public static final enum OKHTTP:Lcom/youku/network/config/YKNetworkConfig$CallType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/youku/network/config/YKNetworkConfig$CallType;

    const-string/jumbo v1, "NETWORKSDK"

    invoke-direct {v0, v1, v2}, Lcom/youku/network/config/YKNetworkConfig$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->NETWORKSDK:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 26
    new-instance v0, Lcom/youku/network/config/YKNetworkConfig$CallType;

    const-string/jumbo v1, "OKHTTP"

    invoke-direct {v0, v1, v3}, Lcom/youku/network/config/YKNetworkConfig$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->OKHTTP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 27
    new-instance v0, Lcom/youku/network/config/YKNetworkConfig$CallType;

    const-string/jumbo v1, "MTOP"

    invoke-direct {v0, v1, v4}, Lcom/youku/network/config/YKNetworkConfig$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->MTOP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/network/config/YKNetworkConfig$CallType;

    sget-object v1, Lcom/youku/network/config/YKNetworkConfig$CallType;->NETWORKSDK:Lcom/youku/network/config/YKNetworkConfig$CallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/network/config/YKNetworkConfig$CallType;->OKHTTP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/network/config/YKNetworkConfig$CallType;->MTOP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->$VALUES:[Lcom/youku/network/config/YKNetworkConfig$CallType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/network/config/YKNetworkConfig$CallType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/youku/network/config/YKNetworkConfig$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/network/config/YKNetworkConfig$CallType;

    return-object v0
.end method

.method public static values()[Lcom/youku/network/config/YKNetworkConfig$CallType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->$VALUES:[Lcom/youku/network/config/YKNetworkConfig$CallType;

    invoke-virtual {v0}, [Lcom/youku/network/config/YKNetworkConfig$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/network/config/YKNetworkConfig$CallType;

    return-object v0
.end method
