.class public Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityManagerKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Lc8/Cm;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Lc8/Cm;

    .prologue
    .line 173
    .line 174
    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;->newTouchExplorationStateChangeListener(Lc8/Cm;)Lc8/Gm;

    move-result-object v0

    .line 173
    invoke-static {p1, v0}, Lc8/Hm;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newTouchExplorationStateChangeListener(Lc8/Cm;)Lc8/Gm;
    .locals 2
    .param p1, "listener"    # Lc8/Cm;

    .prologue
    .line 161
    new-instance v0, Lc8/Gm;

    new-instance v1, Lc8/Am;

    invoke-direct {v1, p0, p1}, Lc8/Am;-><init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;Lc8/Cm;)V

    invoke-direct {v0, p1, v1}, Lc8/Gm;-><init>(Ljava/lang/Object;Lc8/Fm;)V

    return-object v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Lc8/Cm;)Z
    .locals 1
    .param p1, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "listener"    # Lc8/Cm;

    .prologue
    .line 180
    .line 181
    invoke-virtual {p0, p2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;->newTouchExplorationStateChangeListener(Lc8/Cm;)Lc8/Gm;

    move-result-object v0

    .line 180
    invoke-static {p1, v0}, Lc8/Hm;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
