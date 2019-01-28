.class public Lc8/Mvb;
.super Landroid/widget/LinearLayout;
.source "ElevatorText.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private normalColor:Ljava/lang/String;

.field private selectedColor:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Mvb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Mvb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->huichang_tbelevatortext_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    sget v0, Lcom/youku/phone/R$id;->loc_icon:I

    invoke-virtual {p0, v0}, Lc8/Mvb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/Mvb;->imageView:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/youku/phone/R$id;->loc_text:I

    invoke-virtual {p0, v0}, Lc8/Mvb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/Mvb;->textView:Landroid/widget/TextView;

    .line 30
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lc8/Mvb;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lc8/Mvb;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Mvb;->normalColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    return-void
.end method

.method public setNormalColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "normalColor"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lc8/Mvb;->normalColor:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSelectedColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedColor"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lc8/Mvb;->selectedColor:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Mvb;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lc8/Mvb;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lc8/Mvb;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lc8/Mvb;->selectedColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    return-void
.end method
