.class public Lc8/Pe;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Te;->updatePasswordToggleView()V
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
    .line 1073
    iput-object p1, p0, Lc8/Pe;->this$0:Lc8/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1076
    iget-object v0, p0, Lc8/Pe;->this$0:Lc8/Te;

    invoke-virtual {v0}, Lc8/Te;->passwordVisibilityToggleRequested()V

    .line 1077
    return-void
.end method
