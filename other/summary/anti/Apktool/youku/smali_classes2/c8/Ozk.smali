.class public Lc8/Ozk;
.super Ljava/lang/Object;
.source "BottomTabSkinModel.java"


# instance fields
.field public id:I

.field public imageView:Landroid/widget/ImageView;

.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lc8/Ozk;->id:I

    .line 19
    iput-object p2, p0, Lc8/Ozk;->imageView:Landroid/widget/ImageView;

    .line 20
    iput-object p3, p0, Lc8/Ozk;->textView:Landroid/widget/TextView;

    .line 21
    return-void
.end method
