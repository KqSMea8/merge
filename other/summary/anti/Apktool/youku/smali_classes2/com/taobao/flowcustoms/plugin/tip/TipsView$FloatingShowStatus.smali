.class public final enum Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;
.super Ljava/lang/Enum;
.source "TipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FloatingShowStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

.field public static final enum CLOSE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

.field public static final enum HIDE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

.field public static final enum SHOW:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    new-instance v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    const-string/jumbo v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->SHOW:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    .line 421
    new-instance v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    const-string/jumbo v1, "CLOSE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->CLOSE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    .line 422
    new-instance v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    const-string/jumbo v1, "HIDE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->HIDE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    .line 419
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->SHOW:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->CLOSE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->HIDE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->$VALUES:[Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

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
    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 419
    const-class v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    return-object v0
.end method

.method public static values()[Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->$VALUES:[Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    invoke-virtual {v0}, [Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingShowStatus;

    return-object v0
.end method
