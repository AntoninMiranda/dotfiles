local status_ok, header = pcall(require, "epitech_header")
if not status_ok then
    return
end

header.setup({
    name = {
        "0100000101001101"
    }
})
