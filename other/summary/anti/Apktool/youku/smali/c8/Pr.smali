.class public Lc8/Pr;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lc8/gr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tr;


# direct methods
.method constructor <init>(Lc8/Tr;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lc8/Pr;->this$0:Lc8/Tr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 0
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 793
    return-void
.end method

.method public onOpenSubMenu(Lc8/Rq;)Z
    .locals 1
    .param p1, "subMenu"    # Lc8/Rq;

    .prologue
    .line 797
    const/4 v0, 0x0

    return v0
.end method
