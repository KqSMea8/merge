.class public final enum Lcom/taobao/weex/dom/flex/CSSDirection;
.super Ljava/lang/Enum;
.source "CSSDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/dom/flex/CSSDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/dom/flex/CSSDirection;

.field public static final enum INHERIT:Lcom/taobao/weex/dom/flex/CSSDirection;

.field public static final enum LTR:Lcom/taobao/weex/dom/flex/CSSDirection;

.field public static final enum RTL:Lcom/taobao/weex/dom/flex/CSSDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/taobao/weex/dom/flex/CSSDirection;

    const-string/jumbo v1, "INHERIT"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/dom/flex/CSSDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSDirection;->INHERIT:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 10
    new-instance v0, Lcom/taobao/weex/dom/flex/CSSDirection;

    const-string/jumbo v1, "LTR"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/dom/flex/CSSDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSDirection;->LTR:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 11
    new-instance v0, Lcom/taobao/weex/dom/flex/CSSDirection;

    const-string/jumbo v1, "RTL"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/dom/flex/CSSDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSDirection;->RTL:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/weex/dom/flex/CSSDirection;

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSDirection;->INHERIT:Lcom/taobao/weex/dom/flex/CSSDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSDirection;->LTR:Lcom/taobao/weex/dom/flex/CSSDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSDirection;->RTL:Lcom/taobao/weex/dom/flex/CSSDirection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSDirection;->$VALUES:[Lcom/taobao/weex/dom/flex/CSSDirection;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/taobao/weex/dom/flex/CSSDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/flex/CSSDirection;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/dom/flex/CSSDirection;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSDirection;->$VALUES:[Lcom/taobao/weex/dom/flex/CSSDirection;

    invoke-virtual {v0}, [Lcom/taobao/weex/dom/flex/CSSDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/dom/flex/CSSDirection;

    return-object v0
.end method
