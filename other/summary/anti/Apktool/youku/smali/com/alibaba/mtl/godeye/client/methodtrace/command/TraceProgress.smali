.class public final enum Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
.super Ljava/lang/Enum;
.source "TraceProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

.field public static final enum COMPLETE:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

.field public static final enum EXCEPTION_ON_TRY_TIME_OUT:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

.field public static final enum EXCEPTION_ON_UPLOAD:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

.field public static final enum NOT_STARTED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

.field public static final enum RUNNING:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

.field public static final enum UPLOADED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;


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
    new-instance v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    const-string/jumbo v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->NOT_STARTED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    new-instance v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    const-string/jumbo v1, "EXCEPTION_ON_TRY_TIME_OUT"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->EXCEPTION_ON_TRY_TIME_OUT:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    new-instance v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->RUNNING:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    new-instance v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->COMPLETE:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    new-instance v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    const-string/jumbo v1, "EXCEPTION_ON_UPLOAD"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->EXCEPTION_ON_UPLOAD:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    new-instance v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    const-string/jumbo v1, "UPLOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->UPLOADED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->NOT_STARTED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->EXCEPTION_ON_TRY_TIME_OUT:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->RUNNING:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->COMPLETE:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->EXCEPTION_ON_UPLOAD:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->UPLOADED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->$VALUES:[Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

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

.method public static fromName(Ljava/lang/String;)Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->values()[Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 12
    .local v3, "progress":Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    invoke-virtual {v3}, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    .end local v3    # "progress":Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    :goto_1
    return-object v3

    .line 11
    .restart local v3    # "progress":Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    .end local v3    # "progress":Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    :cond_1
    sget-object v3, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->NOT_STARTED:Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->$VALUES:[Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    invoke-virtual {v0}, [Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/mtl/godeye/client/methodtrace/command/TraceProgress;

    return-object v0
.end method
