.class public final enum Lcom/taobao/tao/log/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/log/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/log/LogLevel;

.field public static final enum D:Lcom/taobao/tao/log/LogLevel;

.field public static final enum E:Lcom/taobao/tao/log/LogLevel;

.field public static final enum I:Lcom/taobao/tao/log/LogLevel;

.field public static final enum L:Lcom/taobao/tao/log/LogLevel;

.field public static final enum V:Lcom/taobao/tao/log/LogLevel;

.field public static final enum W:Lcom/taobao/tao/log/LogLevel;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v1, "V"

    const-string/jumbo v2, "V"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/taobao/tao/log/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/LogLevel;->V:Lcom/taobao/tao/log/LogLevel;

    new-instance v0, Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v1, "D"

    const-string/jumbo v2, "D"

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/taobao/tao/log/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/LogLevel;->D:Lcom/taobao/tao/log/LogLevel;

    new-instance v0, Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v1, "I"

    const-string/jumbo v2, "I"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/taobao/tao/log/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    new-instance v0, Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v1, "W"

    const-string/jumbo v2, "W"

    invoke-direct {v0, v1, v7, v2, v6}, Lcom/taobao/tao/log/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    new-instance v0, Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v1, "E"

    const-string/jumbo v2, "E"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/taobao/tao/log/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    new-instance v0, Lcom/taobao/tao/log/LogLevel;

    const-string/jumbo v1, "L"

    const/4 v2, 0x5

    const-string/jumbo v3, "L"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/tao/log/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/tao/log/LogLevel;

    sget-object v1, Lcom/taobao/tao/log/LogLevel;->V:Lcom/taobao/tao/log/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/tao/log/LogLevel;->D:Lcom/taobao/tao/log/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/tao/log/LogLevel;->I:Lcom/taobao/tao/log/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/tao/log/LogLevel;->W:Lcom/taobao/tao/log/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/tao/log/LogLevel;->E:Lcom/taobao/tao/log/LogLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/tao/log/LogLevel;->$VALUES:[Lcom/taobao/tao/log/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/taobao/tao/log/LogLevel;->name:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/taobao/tao/log/LogLevel;->index:I

    .line 15
    return-void
.end method

.method protected static getName(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 27
    invoke-static {}, Lcom/taobao/tao/log/LogLevel;->values()[Lcom/taobao/tao/log/LogLevel;

    move-result-object v0

    .local v0, "arr$":[Lcom/taobao/tao/log/LogLevel;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 28
    .local v1, "c":Lcom/taobao/tao/log/LogLevel;
    invoke-virtual {v1}, Lcom/taobao/tao/log/LogLevel;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 29
    iget-object v4, v1, Lcom/taobao/tao/log/LogLevel;->name:Ljava/lang/String;

    .line 32
    .end local v1    # "c":Lcom/taobao/tao/log/LogLevel;
    :goto_1
    return-object v4

    .line 27
    .restart local v1    # "c":Lcom/taobao/tao/log/LogLevel;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "c":Lcom/taobao/tao/log/LogLevel;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/taobao/tao/log/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/log/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/log/LogLevel;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->$VALUES:[Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0}, [Lcom/taobao/tao/log/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/log/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 22
    iget v0, p0, Lcom/taobao/tao/log/LogLevel;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/taobao/tao/log/LogLevel;->name:Ljava/lang/String;

    return-object v0
.end method
