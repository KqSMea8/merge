.class public Lc8/eap;
.super Ljava/lang/Object;
.source "NetworkDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hap;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hap;


# direct methods
.method constructor <init>(Lc8/hap;)V
    .locals 0
    .param p1, "this$0"    # Lc8/hap;

    .prologue
    .line 111
    iput-object p1, p0, Lc8/eap;->this$0:Lc8/hap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lc8/eap;->this$0:Lc8/hap;

    invoke-static {v0, p2}, Lc8/hap;->access$102(Lc8/hap;Z)Z

    .line 115
    return-void
.end method
