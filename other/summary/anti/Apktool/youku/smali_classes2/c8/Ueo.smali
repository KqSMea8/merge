.class public Lc8/Ueo;
.super Landroid/widget/TextView;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Veo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lc8/Veo;


# direct methods
.method public constructor <init>(Lc8/Veo;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    iput-object p1, p0, Lc8/Ueo;->this$0:Lc8/Veo;

    .line 280
    const/4 v0, 0x0

    sget v1, Lcom/youku/phone/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 281
    return-void
.end method

.method static synthetic access$402(Lc8/Ueo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ueo;
    .param p1, "x1"    # I

    .prologue
    .line 276
    iput p1, p0, Lc8/Ueo;->mIndex:I

    return p1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lc8/Ueo;->mIndex:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 288
    iget-object v0, p0, Lc8/Ueo;->this$0:Lc8/Veo;

    invoke-static {v0}, Lc8/Veo;->access$500(Lc8/Veo;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lc8/Ueo;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lc8/Ueo;->this$0:Lc8/Veo;

    invoke-static {v1}, Lc8/Veo;->access$500(Lc8/Veo;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lc8/Ueo;->this$0:Lc8/Veo;

    invoke-static {v0}, Lc8/Veo;->access$500(Lc8/Veo;)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 292
    :cond_0
    return-void
.end method
