.class public Lc8/kZo;
.super Ljava/lang/Object;
.source "EggDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 87
    iput-object p1, p0, Lc8/kZo;->this$0:Lc8/oZo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 90
    sget v0, Lcom/youku/phone/R$id;->btn_egg_dialog_api_test:I

    if-ne p2, v0, :cond_1

    .line 91
    const-string/jumbo v0, "test"

    sput-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget v0, Lcom/youku/phone/R$id;->btn_egg_dialog_api_test2:I

    if-ne p2, v0, :cond_2

    .line 93
    const-string/jumbo v0, "prepare"

    sput-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_2
    sget v0, Lcom/youku/phone/R$id;->btn_egg_dialog_api_official:I

    if-ne p2, v0, :cond_0

    .line 95
    const-string/jumbo v0, "official"

    sput-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    goto :goto_0
.end method
