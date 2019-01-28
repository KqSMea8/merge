.class public Lc8/lZo;
.super Ljava/lang/Object;
.source "EggDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oZo;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oZo;


# direct methods
.method constructor <init>(Lc8/oZo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oZo;

    .prologue
    .line 126
    iput-object p1, p0, Lc8/lZo;->this$0:Lc8/oZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lc8/lZo;->this$0:Lc8/oZo;

    invoke-static {v0, p2}, Lc8/oZo;->access$002(Lc8/oZo;Z)Z

    .line 130
    return-void
.end method
