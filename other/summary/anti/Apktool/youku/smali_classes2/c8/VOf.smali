.class public Lc8/VOf;
.super Ljava/lang/Object;
.source "ImageSaveFeature.java"

# interfaces
.implements Lc8/XOf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZOf;->setHost(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZOf;


# direct methods
.method constructor <init>(Lc8/ZOf;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lc8/VOf;->this$0:Lc8/ZOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doMethod(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 99
    iget-object v0, p0, Lc8/VOf;->this$0:Lc8/ZOf;

    invoke-static {v0, p1}, Lc8/ZOf;->access$000(Lc8/ZOf;Landroid/widget/ImageView;)V

    .line 100
    return-void
.end method
