.class public abstract Lc8/uLn;
.super Landroid/app/DialogFragment;
.source "BaseDialogFragment.java"


# static fields
.field public static final UPASSWORDBEAN_FLAG:Ljava/lang/String; = "UPasswordBeanFlag"

.field public static final UPASSWORD_DIALOG_TYPE_H5:I = 0x271b

.field public static final UPASSWORD_DIALOG_TYPE_VIDEO:I = 0x271a

.field public static isHasDialogShow:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private UPASSWORD_DIALOG_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lc8/uLn;->isHasDialogShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 22
    const-string/jumbo v0, "BaseDialogFragment"

    iput-object v0, p0, Lc8/uLn;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lc8/uLn;->UPASSWORD_DIALOG_TYPE:I

    return-void
.end method

.method private getUPasswordDialogView(I)I
    .locals 1
    .param p1, "dialogType"    # I

    .prologue
    .line 67
    const/16 v0, 0x271a

    if-ne v0, p1, :cond_0

    .line 68
    sget v0, Lcom/youku/phone/R$layout;->upassword_dialog_show_video_ui:I

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    const/16 v0, 0x271b

    if-ne v0, p1, :cond_1

    .line 70
    sget v0, Lcom/youku/phone/R$layout;->upassword_dialog_show_h5_ui:I

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dissMissDialog()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " dissMissDialog() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/uLn;->isHasDialogShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lc8/uLn;->isHasDialogShow:Z

    .line 79
    invoke-virtual {p0}, Lc8/uLn;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lc8/uLn;->dismissAllowingStateLoss()V

    .line 82
    :cond_0
    return-void
.end method

.method protected abstract initChildView(Landroid/view/View;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v1}, Lc8/uLn;->setCancelable(Z)V

    .line 41
    sget v0, Lcom/youku/phone/R$style;->Translucent_NoTitle:I

    invoke-virtual {p0, v1, v0}, Lc8/uLn;->setStyle(II)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lc8/uLn;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "UPasswordBeanFlag"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/upassword/bean/UPasswordBean;

    .line 48
    .local v0, "uPasswordBeanResult":Lcom/youku/upassword/bean/UPasswordBean;
    invoke-virtual {p0}, Lc8/uLn;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 49
    iget v2, p0, Lc8/uLn;->UPASSWORD_DIALOG_TYPE:I

    invoke-direct {p0, v2}, Lc8/uLn;->getUPasswordDialogView(I)I

    move-result v2

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lc8/uLn;->initChildView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0, v0}, Lc8/uLn;->setData(Lcom/youku/upassword/bean/UPasswordBean;)V

    .line 52
    invoke-virtual {p0, v0}, Lc8/uLn;->setOnclickEvent(Lcom/youku/upassword/bean/UPasswordBean;)V

    .line 53
    return-object v1
.end method

.method protected abstract setData(Lcom/youku/upassword/bean/UPasswordBean;)V
.end method

.method protected abstract setOnclickEvent(Lcom/youku/upassword/bean/UPasswordBean;)V
.end method

.method public setUPasswordDialogType(I)V
    .locals 0
    .param p1, "dialogType"    # I

    .prologue
    .line 58
    iput p1, p0, Lc8/uLn;->UPASSWORD_DIALOG_TYPE:I

    .line 59
    return-void
.end method

.method public show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " show() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/uLn;->isHasDialogShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lc8/uLn;->isHasDialogShow:Z

    .line 96
    const/16 v0, 0x1001

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 97
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 98
    invoke-static {}, Lc8/zLn;->getInstance()Lc8/zLn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/zLn;->clearClip()V

    .line 99
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v0

    return v0
.end method

.method public showDialog(Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " showDialog() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/uLn;->isHasDialogShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    sget-boolean v0, Lc8/uLn;->isHasDialogShow:Z

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "dialog"

    invoke-virtual {p0, p1, v0}, Lc8/uLn;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method
