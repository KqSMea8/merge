.class public Lc8/qh;
.super Ljava/lang/Object;
.source "TransitionPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field values:Lc8/Ch;

.field view:Landroid/view/View;

.field windowId:Lc8/Rh;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Lc8/Rh;Lc8/Ch;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "windowId"    # Lc8/Rh;
    .param p4, "values"    # Lc8/Ch;

    .prologue
    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1242
    iput-object p1, p0, Lc8/qh;->view:Landroid/view/View;

    .line 1243
    iput-object p2, p0, Lc8/qh;->name:Ljava/lang/String;

    .line 1244
    iput-object p4, p0, Lc8/qh;->values:Lc8/Ch;

    .line 1245
    iput-object p3, p0, Lc8/qh;->windowId:Lc8/Rh;

    .line 1246
    return-void
.end method
