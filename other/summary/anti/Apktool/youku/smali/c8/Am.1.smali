.class public Lc8/Am;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"

# interfaces
.implements Lc8/Fm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;->newTouchExplorationStateChangeListener(Lc8/Cm;)Lc8/Gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;

.field final synthetic val$listener:Lc8/Cm;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;Lc8/Cm;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 162
    iput-object p1, p0, Lc8/Am;->this$0:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;

    iput-object p2, p0, Lc8/Am;->val$listener:Lc8/Cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lc8/Am;->val$listener:Lc8/Cm;

    invoke-interface {v0, p1}, Lc8/Cm;->onTouchExplorationStateChanged(Z)V

    .line 166
    return-void
.end method
