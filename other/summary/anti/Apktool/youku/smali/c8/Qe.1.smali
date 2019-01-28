.class public Lc8/Qe;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Lc8/Ze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Te;->animateToExpansionFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Te;


# direct methods
.method constructor <init>(Lc8/Te;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Te;

    .prologue
    .line 1426
    iput-object p1, p0, Lc8/Qe;->this$0:Lc8/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lc8/ef;)V
    .locals 2
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 1429
    iget-object v0, p0, Lc8/Qe;->this$0:Lc8/Te;

    iget-object v0, v0, Lc8/Te;->mCollapsingTextHelper:Lc8/jd;

    invoke-virtual {p1}, Lc8/ef;->getAnimatedFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lc8/jd;->setExpansionFraction(F)V

    .line 1430
    return-void
.end method
