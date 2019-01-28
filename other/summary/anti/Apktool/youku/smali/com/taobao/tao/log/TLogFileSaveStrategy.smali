.class public final enum Lcom/taobao/tao/log/TLogFileSaveStrategy;
.super Ljava/lang/Enum;
.source "TLogFileSaveStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/log/TLogFileSaveStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/log/TLogFileSaveStrategy;

.field public static final enum MOREFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

.field public static final enum ONEFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;

    const-string/jumbo v1, "ONEFILE"

    invoke-direct {v0, v1, v2}, Lcom/taobao/tao/log/TLogFileSaveStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;->ONEFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    new-instance v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;

    const-string/jumbo v1, "MOREFILE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/tao/log/TLogFileSaveStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;->MOREFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/tao/log/TLogFileSaveStrategy;

    sget-object v1, Lcom/taobao/tao/log/TLogFileSaveStrategy;->ONEFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/tao/log/TLogFileSaveStrategy;->MOREFILE:Lcom/taobao/tao/log/TLogFileSaveStrategy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;->$VALUES:[Lcom/taobao/tao/log/TLogFileSaveStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/log/TLogFileSaveStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/log/TLogFileSaveStrategy;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/taobao/tao/log/TLogFileSaveStrategy;->$VALUES:[Lcom/taobao/tao/log/TLogFileSaveStrategy;

    invoke-virtual {v0}, [Lcom/taobao/tao/log/TLogFileSaveStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/log/TLogFileSaveStrategy;

    return-object v0
.end method
