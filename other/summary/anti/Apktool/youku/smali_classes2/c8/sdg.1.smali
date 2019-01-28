.class public Lc8/sdg;
.super Lc8/hfg;
.source "TemplateViewHolder.java"


# instance fields
.field public asyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/lang/Object;

.field private holderPosition:I

.field private layoutContext:Lc8/AZf;

.field private template:Lc8/jdg;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lc8/hfg;-><init>(Landroid/view/View;I)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lc8/sdg;->holderPosition:I

    .line 63
    return-void
.end method

.method public constructor <init>(Lc8/jdg;I)V
    .locals 1
    .param p1, "component"    # Lc8/jdg;
    .param p2, "viewType"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lc8/hfg;-><init>(Lc8/tbg;I)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lc8/sdg;->holderPosition:I

    .line 58
    iput-object p1, p0, Lc8/sdg;->template:Lc8/jdg;

    .line 59
    return-void
.end method


# virtual methods
.method public getHolderPosition()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lc8/sdg;->holderPosition:I

    return v0
.end method

.method public getLayoutContext()Lc8/AZf;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/sdg;->layoutContext:Lc8/AZf;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lc8/AZf;

    invoke-direct {v0}, Lc8/AZf;-><init>()V

    iput-object v0, p0, Lc8/sdg;->layoutContext:Lc8/AZf;

    .line 69
    :cond_0
    iget-object v0, p0, Lc8/sdg;->layoutContext:Lc8/AZf;

    return-object v0
.end method

.method public getTemplate()Lc8/jdg;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lc8/sdg;->template:Lc8/jdg;

    return-object v0
.end method

.method public setHolderPosition(I)V
    .locals 0
    .param p1, "holderPosition"    # I

    .prologue
    .line 82
    iput p1, p0, Lc8/sdg;->holderPosition:I

    .line 83
    return-void
.end method

.method public setLayoutContext(Lc8/AZf;)V
    .locals 0
    .param p1, "layoutContext"    # Lc8/AZf;

    .prologue
    .line 73
    iput-object p1, p0, Lc8/sdg;->layoutContext:Lc8/AZf;

    .line 74
    return-void
.end method
