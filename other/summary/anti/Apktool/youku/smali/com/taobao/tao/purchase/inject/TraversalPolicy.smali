.class public final enum Lcom/taobao/tao/purchase/inject/TraversalPolicy;
.super Ljava/lang/Enum;
.source "TraversalPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/tao/purchase/inject/TraversalPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/purchase/inject/TraversalPolicy;

.field public static final enum DECLARED:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

.field public static final enum DEFAULT:Lcom/taobao/tao/purchase/inject/TraversalPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/taobao/tao/purchase/inject/TraversalPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DEFAULT:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    new-instance v0, Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    const-string/jumbo v1, "DECLARED"

    invoke-direct {v0, v1, v3}, Lcom/taobao/tao/purchase/inject/TraversalPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DECLARED:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    sget-object v1, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DEFAULT:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DECLARED:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->$VALUES:[Lcom/taobao/tao/purchase/inject/TraversalPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/purchase/inject/TraversalPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    return-object v0
.end method

.method public static values()[Lcom/taobao/tao/purchase/inject/TraversalPolicy;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->$VALUES:[Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    invoke-virtual {v0}, [Lcom/taobao/tao/purchase/inject/TraversalPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    return-object v0
.end method
