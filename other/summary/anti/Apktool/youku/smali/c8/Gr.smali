.class public Lc8/Gr;
.super Lc8/zq;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nr;


# direct methods
.method constructor <init>(Lc8/Nr;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lc8/Gr;->this$0:Lc8/Nr;

    invoke-direct {p0}, Lc8/zq;-><init>()V

    .line 812
    return-void
.end method


# virtual methods
.method public getPopup()Lc8/mr;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lc8/Gr;->this$0:Lc8/Nr;

    iget-object v0, v0, Lc8/Nr;->mActionButtonPopup:Lc8/Fr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Gr;->this$0:Lc8/Nr;

    iget-object v0, v0, Lc8/Nr;->mActionButtonPopup:Lc8/Fr;

    invoke-virtual {v0}, Lc8/Fr;->getPopup()Lc8/dr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
