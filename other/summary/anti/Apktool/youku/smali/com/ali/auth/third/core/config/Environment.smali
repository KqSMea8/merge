.class public final enum Lcom/ali/auth/third/core/config/Environment;
.super Ljava/lang/Enum;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ali/auth/third/core/config/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ali/auth/third/core/config/Environment;

.field public static final enum ONLINE:Lcom/ali/auth/third/core/config/Environment;

.field public static final enum PRE:Lcom/ali/auth/third/core/config/Environment;

.field public static final enum SANDBOX:Lcom/ali/auth/third/core/config/Environment;

.field public static final enum TEST:Lcom/ali/auth/third/core/config/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/ali/auth/third/core/config/Environment;

    const-string/jumbo v1, "SANDBOX"

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/config/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/auth/third/core/config/Environment;->SANDBOX:Lcom/ali/auth/third/core/config/Environment;

    new-instance v0, Lcom/ali/auth/third/core/config/Environment;

    const-string/jumbo v1, "TEST"

    invoke-direct {v0, v1, v3}, Lcom/ali/auth/third/core/config/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    new-instance v0, Lcom/ali/auth/third/core/config/Environment;

    const-string/jumbo v1, "PRE"

    invoke-direct {v0, v1, v4}, Lcom/ali/auth/third/core/config/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/auth/third/core/config/Environment;->PRE:Lcom/ali/auth/third/core/config/Environment;

    new-instance v0, Lcom/ali/auth/third/core/config/Environment;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v5}, Lcom/ali/auth/third/core/config/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/auth/third/core/config/Environment;->ONLINE:Lcom/ali/auth/third/core/config/Environment;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ali/auth/third/core/config/Environment;

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->SANDBOX:Lcom/ali/auth/third/core/config/Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->PRE:Lcom/ali/auth/third/core/config/Environment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->ONLINE:Lcom/ali/auth/third/core/config/Environment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ali/auth/third/core/config/Environment;->$VALUES:[Lcom/ali/auth/third/core/config/Environment;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/auth/third/core/config/Environment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/ali/auth/third/core/config/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/core/config/Environment;

    return-object v0
.end method

.method public static values()[Lcom/ali/auth/third/core/config/Environment;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/ali/auth/third/core/config/Environment;->$VALUES:[Lcom/ali/auth/third/core/config/Environment;

    invoke-virtual {v0}, [Lcom/ali/auth/third/core/config/Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ali/auth/third/core/config/Environment;

    return-object v0
.end method
