.class public Lc8/lC;
.super Ljava/lang/Object;
.source "WVPageFinishJSRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kC;
    }
.end annotation


# static fields
.field private static jsContent:Ljava/lang/String;

.field private static renderJs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lc8/lC;->renderJs:Z

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lc8/lC;->jsContent:Ljava/lang/String;

    .line 23
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    new-instance v1, Lc8/kC;

    invoke-direct {v1}, Lc8/kC;-><init>()V

    sget v2, Lc8/qH;->WV_BACKWARD_EVENT:I

    invoke-virtual {v0, v1, v2}, Lc8/qH;->addEventListener(Lc8/pH;I)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lc8/lC;->renderJs:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lc8/lC;->jsContent:Ljava/lang/String;

    return-object v0
.end method

.method public static clearJsRender()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lc8/lC;->renderJs:Z

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lc8/lC;->jsContent:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static isRenderJs()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lc8/lC;->renderJs:Z

    return v0
.end method

.method public static setJsContent(Ljava/lang/String;)V
    .locals 1
    .param p0, "js"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lc8/lC;->renderJs:Z

    .line 30
    sput-object p0, Lc8/lC;->jsContent:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method
