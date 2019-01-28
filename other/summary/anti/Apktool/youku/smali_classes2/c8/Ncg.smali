.class public final Lc8/Ncg;
.super Ljava/lang/Object;
.source "WXTimeInputHelper.java"

# interfaces
.implements Lc8/UVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Pcg;->pickDate(Ljava/lang/String;Ljava/lang/String;Lc8/abg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$component:Lc8/abg;

.field final synthetic val$target:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lc8/abg;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lc8/Ncg;->val$target:Landroid/widget/TextView;

    iput-object p2, p0, Lc8/Ncg;->val$component:Lc8/abg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(ZLjava/lang/String;)V
    .locals 1
    .param p1, "set"    # Z
    .param p2, "result"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lc8/Ncg;->val$target:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lc8/Ncg;->val$component:Lc8/abg;

    invoke-virtual {v0, p2}, Lc8/abg;->performOnChange(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method
