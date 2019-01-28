.class public final enum Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;
.super Ljava/lang/Enum;
.source "TipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FloatingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

.field public static final enum SHOW_ALWAYS:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

.field public static final enum SHOW_ONCE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    new-instance v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    const-string/jumbo v1, "SHOW_ONCE"

    invoke-direct {v0, v1, v2}, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->SHOW_ONCE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    .line 416
    new-instance v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    const-string/jumbo v1, "SHOW_ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->SHOW_ALWAYS:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    .line 414
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->SHOW_ONCE:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->SHOW_ALWAYS:Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->$VALUES:[Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

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
    .line 414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 414
    const-class v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->$VALUES:[Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    invoke-virtual {v0}, [Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/flowcustoms/plugin/tip/TipsView$FloatingType;

    return-object v0
.end method
