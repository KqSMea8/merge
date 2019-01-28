.class public Lc8/DEn;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lc8/xap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IEn;->menuClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IEn;


# direct methods
.method constructor <init>(Lc8/IEn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/IEn;

    .prologue
    .line 251
    iput-object p1, p0, Lc8/DEn;->this$0:Lc8/IEn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lc8/DEn;->this$0:Lc8/IEn;

    invoke-virtual {v0, p1}, Lc8/IEn;->menuClick(I)Z

    .line 255
    return-void
.end method
