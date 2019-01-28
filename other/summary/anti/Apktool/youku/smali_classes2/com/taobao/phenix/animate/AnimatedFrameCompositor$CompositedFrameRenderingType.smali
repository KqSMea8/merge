.class public final enum Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
.super Ljava/lang/Enum;
.source "AnimatedFrameCompositor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompositedFrameRenderingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

.field public static final enum ABORT:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

.field public static final enum NOT_REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

.field public static final enum REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

.field public static final enum SKIP:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const-string/jumbo v1, "REQUIRED"

    invoke-direct {v0, v1, v2}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    .line 227
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const-string/jumbo v1, "NOT_REQUIRED"

    invoke-direct {v0, v1, v3}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->NOT_REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    .line 232
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const-string/jumbo v1, "SKIP"

    invoke-direct {v0, v1, v4}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->SKIP:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    .line 237
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const-string/jumbo v1, "ABORT"

    invoke-direct {v0, v1, v5}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->ABORT:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    sget-object v1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->NOT_REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->SKIP:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->ABORT:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->$VALUES:[Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

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
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    const-class v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->$VALUES:[Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    invoke-virtual {v0}, [Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object v0
.end method
