.class public final enum Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
.super Ljava/lang/Enum;
.source "ConsoleLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/poplayer/utils/ConsoleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

.field public static final enum D:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

.field public static final enum E:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

.field public static final enum I:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

.field public static final enum V:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

.field public static final enum W:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;


# instance fields
.field color:I

.field sign:C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    new-instance v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    const-string/jumbo v1, "V"

    const/16 v2, 0x76

    const/4 v3, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->V:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .line 115
    new-instance v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    const-string/jumbo v1, "I"

    const/16 v2, 0x69

    const v3, -0xff0100

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->I:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .line 116
    new-instance v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    const-string/jumbo v1, "W"

    const/16 v2, 0x77

    const/16 v3, -0x100

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->W:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .line 117
    new-instance v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    const-string/jumbo v1, "E"

    const/16 v2, 0x65

    const/high16 v3, -0x10000

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->E:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .line 118
    new-instance v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    const-string/jumbo v1, "D"

    const/16 v2, 0x64

    const v3, -0xffff01

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;-><init>(Ljava/lang/String;ICI)V

    sput-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->D:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .line 113
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->V:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->I:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->W:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->E:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->D:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    aput-object v1, v0, v8

    sput-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->$VALUES:[Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICI)V
    .locals 0
    .param p3, "sign"    # C
    .param p4, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CI)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-char p3, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->sign:C

    .line 125
    iput p4, p0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->color:I

    .line 126
    return-void
.end method

.method public static find(C)Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    .locals 5
    .param p0, "sign"    # C

    .prologue
    .line 129
    invoke-static {}, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->values()[Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 130
    .local v2, "l":Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    iget-char v4, v2, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->sign:C

    if-ne v4, p0, :cond_0

    .line 132
    .end local v2    # "l":Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    :goto_1
    return-object v2

    .line 129
    .restart local v2    # "l":Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "l":Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    :cond_1
    sget-object v2, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->D:Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->$VALUES:[Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    invoke-virtual {v0}, [Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    return-object v0
.end method
