.class public Lc8/gap;
.super Ljava/lang/Object;
.source "NetworkDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 130
    iput-object p1, p0, Lc8/gap;->this$0:Lc8/hap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 133
    sget v0, Lcom/youku/phone/R$id;->chk_egg_network_dialog_ups_default:I

    if-ne p2, v0, :cond_1

    .line 134
    iget-object v0, p0, Lc8/gap;->this$0:Lc8/hap;

    sget-object v1, Lc8/hap;->EGG_DIALOG_UPS_DEFAULT:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/hap;->access$302(Lc8/hap;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    sget v0, Lcom/youku/phone/R$id;->chk_egg_network_dialog_ups_http:I

    if-ne p2, v0, :cond_2

    .line 136
    iget-object v0, p0, Lc8/gap;->this$0:Lc8/hap;

    sget-object v1, Lc8/hap;->EGG_DIALOG_UPS_HTTP:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/hap;->access$302(Lc8/hap;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_2
    sget v0, Lcom/youku/phone/R$id;->chk_egg_network_dialog_ups_mtop:I

    if-ne p2, v0, :cond_0

    .line 138
    iget-object v0, p0, Lc8/gap;->this$0:Lc8/hap;

    sget-object v1, Lc8/hap;->EGG_DIALOG_UPS_MTOP:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/hap;->access$302(Lc8/hap;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
