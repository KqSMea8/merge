.class public final Lc8/Em;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatKitKat.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hm;->newTouchExplorationStateChangeListener(Lc8/Fm;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$bridge:Lc8/Fm;


# direct methods
.method constructor <init>(Lc8/Fm;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lc8/Em;->val$bridge:Lc8/Fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lc8/Em;->val$bridge:Lc8/Fm;

    invoke-interface {v0, p1}, Lc8/Fm;->onTouchExplorationStateChanged(Z)V

    .line 77
    return-void
.end method
