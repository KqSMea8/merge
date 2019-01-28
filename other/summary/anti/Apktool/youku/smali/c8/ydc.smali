.class public Lc8/ydc;
.super Landroid/text/method/PasswordTransformationMethod;
.source "VerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsteriskPasswordTransformationMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xdc;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lc8/ydc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 690
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 687
    new-instance v0, Lc8/xdc;

    invoke-direct {v0, p0, p1}, Lc8/xdc;-><init>(Lc8/ydc;Ljava/lang/CharSequence;)V

    return-object v0
.end method
