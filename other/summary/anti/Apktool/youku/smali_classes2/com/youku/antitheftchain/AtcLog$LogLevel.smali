.class public final enum Lcom/youku/antitheftchain/AtcLog$LogLevel;
.super Ljava/lang/Enum;
.source "AtcLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lPg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/antitheftchain/AtcLog$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/antitheftchain/AtcLog$LogLevel;

.field public static final enum debug:Lcom/youku/antitheftchain/AtcLog$LogLevel;

.field public static final enum error:Lcom/youku/antitheftchain/AtcLog$LogLevel;

.field public static final enum info:Lcom/youku/antitheftchain/AtcLog$LogLevel;

.field public static final enum warning:Lcom/youku/antitheftchain/AtcLog$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1, v2}, Lcom/youku/antitheftchain/AtcLog$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;->error:Lcom/youku/antitheftchain/AtcLog$LogLevel;

    new-instance v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;

    const-string/jumbo v1, "warning"

    invoke-direct {v0, v1, v3}, Lcom/youku/antitheftchain/AtcLog$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;->warning:Lcom/youku/antitheftchain/AtcLog$LogLevel;

    new-instance v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;

    const-string/jumbo v1, "debug"

    invoke-direct {v0, v1, v4}, Lcom/youku/antitheftchain/AtcLog$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;->debug:Lcom/youku/antitheftchain/AtcLog$LogLevel;

    new-instance v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;

    const-string/jumbo v1, "info"

    invoke-direct {v0, v1, v5}, Lcom/youku/antitheftchain/AtcLog$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;->info:Lcom/youku/antitheftchain/AtcLog$LogLevel;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/antitheftchain/AtcLog$LogLevel;

    sget-object v1, Lcom/youku/antitheftchain/AtcLog$LogLevel;->error:Lcom/youku/antitheftchain/AtcLog$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/antitheftchain/AtcLog$LogLevel;->warning:Lcom/youku/antitheftchain/AtcLog$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/antitheftchain/AtcLog$LogLevel;->debug:Lcom/youku/antitheftchain/AtcLog$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/antitheftchain/AtcLog$LogLevel;->info:Lcom/youku/antitheftchain/AtcLog$LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;->$VALUES:[Lcom/youku/antitheftchain/AtcLog$LogLevel;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/antitheftchain/AtcLog$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/youku/antitheftchain/AtcLog$LogLevel;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/youku/antitheftchain/AtcLog$LogLevel;->$VALUES:[Lcom/youku/antitheftchain/AtcLog$LogLevel;

    invoke-virtual {v0}, [Lcom/youku/antitheftchain/AtcLog$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/antitheftchain/AtcLog$LogLevel;

    return-object v0
.end method
